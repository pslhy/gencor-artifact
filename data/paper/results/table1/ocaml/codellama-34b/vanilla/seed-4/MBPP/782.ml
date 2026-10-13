let rec odd_length_sum (arr : int list) : int = 
    (* base case: empty list with length 0 *)
    let rec loop (i : int) (acc : int) : int = 
        if i >= arr.length then acc 
        else 
            loop (i+1) (acc + i)
    loop 0 


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of all odd length sublists. https://www.geeksforgeeks.org/sum-of-all-odd-length-sublists/ *)
