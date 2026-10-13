let rec find_adverb_position (text : string) :  int * int * string =
  if(text.Length > 0)
  {
    let arr = text.Split('.') in
    FindAll(arr,("rare", "normally", "least", "more", "mostly", "nearly", "pretty", "quickly", "slightly", "somewhat", "too", "very"))

    let rec FindAll(arr,keywords: string>) 
    {
      match arr with
        |_ -> let found= ref false
              let first_adverb = arr[^].Split(' ')
                  
          loop 
          ( i = 1 to first_adverb.Length-1 
            j = i + 1 to first_adverb.Length 
            _ -> if keywords.Contains(first_adverb[i])
            
            let pos = first_adverb.Length -1-j 
            found = true
          )
        if !found then (i,pos,first_adverb[i])
          
          let pos' = FindAll("",arr[i]::'')
     
          (i,pos')
        else (-1,-1,"")
      |_ -> ("",-1)
      ]



 }



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the first adverb and their positions in a given sentence. *)
