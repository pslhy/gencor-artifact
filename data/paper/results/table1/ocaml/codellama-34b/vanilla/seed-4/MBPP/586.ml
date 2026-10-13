let rec split_Arr (l : int list) (n : int) : int list = 
    (* base case: ignore if n <= 0 *)
    let rec loop (l : int list) (n : int) : int list = 
        (* base case: n <= 0 or empty list *)
        if n <= 0 or l = [] then []
        (* recursive case: add current element and recurse on the rest of the list *)
        else (List.hd l) :: (loop (List.tl l) (n-1) ) 
    in
      loop l n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to split a list at the nth eelment and add the first part to the end. *)
