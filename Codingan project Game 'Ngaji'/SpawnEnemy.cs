using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpawnEnemy : MonoBehaviour
{
    public GameObject Musuh;
    public int xpos;
    public int zpos;
    public int xpos1;
    public int zpos1;
    public int xpos2;
    public int zpos2;
    public int jumlah;
    // Start is called before the first frame update
    void Start()
    {

        StartCoroutine(EnemyDrop());
        
    }
    IEnumerator EnemyDrop()
    {
        while (jumlah < 5)
        {
            xpos = Random.Range(203,283);
            zpos = Random.Range(150,264);
            xpos1 = Random.Range(532,636);
            zpos1 = Random.Range(158,301);
            xpos2 = Random.Range(300,570);
            zpos2 = Random.Range(734,775);
            Instantiate(Musuh, new Vector3(xpos, 0, zpos), Quaternion.identity);
            Instantiate(Musuh, new Vector3(xpos1, 0, zpos1), Quaternion.identity);
            Instantiate(Musuh, new Vector3(xpos2, 0, zpos2), Quaternion.identity);
            yield return new WaitForSeconds(0.1f);
            jumlah += 1;

        }

    }
}
