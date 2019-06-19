__global__ voud foo() {
    __shared__ int s[1024];
    int s[i] = threadIdx.x;
    //-------------------
    int temp = s[i-1];
    __syncthreads();
    s[i] = temp;
    //-------------------
    __syncthreads();
    float temp = (s[i-1] + s[i] + s[i+1]) / 3.0;
    __syncthreads();
    s[i] = temp;
    __syncthreads();
    printf();

}