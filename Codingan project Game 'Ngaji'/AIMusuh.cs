using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.SceneManagement;


public class AIMusuh : MonoBehaviour
{

    private NavMeshAgent Mob;
    public GameObject Player;
    public float MobDistanceRun = 4.0f;
    static Animator animator;

    // Start is called before the first frame update
    void Start()
    {
        Mob = GetComponent<NavMeshAgent>();
        animator = GetComponent<Animator>();
    }

    // Update is called once per frame
    void Update()
    {
        float distance = Vector3.Distance(transform.position, Player.transform.position);

        animator.SetBool("Idle", true);
        animator.SetBool("Walk", false);

        if (distance < MobDistanceRun)
        {
            animator.SetBool("Walk", true);
            animator.SetBool("Idle", false);

            Vector3 dirToPlayer = transform.position - Player.transform.position;

            Vector3 newPos = transform.position - dirToPlayer;

            Mob.SetDestination(newPos);



        }
    }

    private void OnTriggerEnter(Collider other)
    {
        SceneManager.LoadScene(0);
    }
}

