let rec sum_even_and_even_index (arr : int list) : int = 
    (* Declare and initialize local variables *)
    let rec helper arr acc index = 
        (* Base case: If the list is empty, return the accumulator *)
        if arr = [] then acc else
        let elem = List.hd arr in
        let rest = List.tl arr in
        (* Case 1: If the index is even and the element is even, add it to the accumulator and recurse *)
        if index mod 2 = 0 && elem mod 2 = 0 then 
            helper rest (acc + elem) (index + 1)
        (* Case 2: If the index is odd or the element is odd, do not add it to the accumulator and recurse *)
        else 
            helper rest acc (index + 1) in
    helper arr 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of even numbers at even positions of a list. *)
