using UnityEngine;
using System.Collections;
public class AI : MonoBehaviour
{
    public GameObject target;
    Animator animator;

    void Start()
    {
        animator = GetComponent<Animator>();
    }
    void Update()
    {
        this.gameObject.GetComponent<UnityEngine.AI.NavMeshAgent>().destination = target.transform.position;
    }
}