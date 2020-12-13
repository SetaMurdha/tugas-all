using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.AI;

public class UjiMusuh : MonoBehaviour
{
    public Transform follow;

    public float jarak = 30f;

    NavMeshAgent agent;

    static Animator animator;

    // Start is called before the first frame update
    void Start()
     {
        agent = GetComponent<NavMeshAgent>();
        animator = GetComponent<Animator>();
    }

    // Update is called once per frame
    void Update()
    {
        float distance = Vector3.Distance(transform.position, follow.transform.position);
        print(distance);

        animator.SetBool("Run", false);

        if (distance < jarak)
        {
            animator.SetBool("Run", true);
            agent.destination = follow.position;

        }
    }

}
