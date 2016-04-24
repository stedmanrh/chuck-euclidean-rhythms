public class Euclid{
    
    static int seq[];
    
    fun void setSeq(int val[]){
        val @=> seq;
    }
    
    function int[] euclid(int pulses, int beats){

        if(beats<pulses)
            pulses => beats; //correct invalid input

        pulses => int x;
        beats => int y;

        int seq[beats];

        //create an initial sequence to work from
        for(0 => int i; i < pulses; i++){
            1 @=> seq[i];
        }

        for(pulses => int i; i<beats; i++){
            0 @=> seq[i];
        }

        0 => int n; //let n = bit-count for subsequences

        //check if more pulses or rests in sequence
        x => int z;
        if((y-x)>x)
            (y-x) => z;

        //recursively apply Euclidean Algorithm to build correct sequence
        while(y%z > 1){
            n++;
            y%z => int r;

            int push[beats];
            0 => int pos;
            0 => int start;
            beats-1 => int end;

            while(start < r){
                for(0 => int j; j < n; j++){
                    seq[n*start+j] @=> push[pos];
                    pos++;
                }
                seq[end] @=> push[pos];
                end--;
                pos++;

                start++;
            }

            while(pos < beats){
                seq[start] @=> push[pos];
                start++;
                pos++;
            }

            push @=> seq;

            z => y;
            r => z;
        }

        //cases where beats are divisible by pulses
        if(n<1 && y!=x){
            y/x => int q;
            for(0=>int i; i<y; i++){
                if(i%q==0)
                    1 @=> seq[i];
                else
                    0 @=> seq[i];
            }
        }
        
        return seq;
    }
}
