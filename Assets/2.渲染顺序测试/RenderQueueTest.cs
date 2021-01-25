using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RenderQueueTest : MonoBehaviour
{
    public int renderQueue;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        GetComponent<MeshRenderer>().material.renderQueue = renderQueue;
    }
}
