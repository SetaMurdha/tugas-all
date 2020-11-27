using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Movement : MonoBehaviour
{
    [SerializeField] private float walkSpeed = 8f;
    [SerializeField] private float runSpeed = 16f;
    private float currentSpeed = 0f;
    private float speedSmoothVelocity = 0f;
    private float speedSmoothTime = 0.1f;
    private float rotationSpeed = 0.1f;
    private float gravity = 3f;

    private Rigidbody rb;

    private Transform mainCameraTransform = null;

    private CharacterController controller = null;
    private Animator animator = null;

    // Start is called before the first frame update
    private void Start()
    {
        controller = GetComponent<CharacterController>();
        animator = GetComponent<Animator>();

        rb = GetComponent<Rigidbody>();

        mainCameraTransform = Camera.main.transform;
    }

    // Update is called once per frame
    private void Update()
    {
        move();
    }

    private void move()
    {

        Vector2 movementInput = new Vector2(Input.GetAxisRaw("Horizontal"), Input.GetAxisRaw("Vertical"));

        Vector3 forward = mainCameraTransform.forward;
        Vector3 right = mainCameraTransform.right;

        forward.y = 0;
        right.y = 0;

        forward.Normalize();
        right.Normalize();

        Vector3 desiredMoveDirection = (forward * movementInput.y + right * movementInput.x).normalized;
        Vector3 gravityVector = Vector3.zero;
        
        if (!controller.isGrounded)
        {
            gravityVector.y -= gravity;
        }

        if(desiredMoveDirection != Vector3.zero)
        {

            transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(desiredMoveDirection), rotationSpeed);

        }

        float targetSpeed = walkSpeed * movementInput.magnitude;

        if (Input.GetKey(KeyCode.LeftShift))
        {
            targetSpeed = runSpeed * movementInput.magnitude;
        }

        currentSpeed = Mathf.SmoothDamp(currentSpeed, targetSpeed, ref speedSmoothVelocity, speedSmoothTime);

        controller.Move(desiredMoveDirection * currentSpeed * Time.deltaTime);

        controller.Move(gravityVector * Time.deltaTime);

        animator.SetFloat("Mvment", 0.4f * movementInput.magnitude, speedSmoothTime, Time.deltaTime);

        if (Input.GetKey(KeyCode.LeftShift))
        {
            animator.SetFloat("Mvment", 1f * movementInput.magnitude, speedSmoothTime, Time.deltaTime);
        }
    }

}
