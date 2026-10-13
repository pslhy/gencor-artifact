let rec is_undulating (n : int) : bool = 
    (* base case: if n is a single digit, it is undulating *)
    if n < 10 then true
    (* recursive case: check if n and its reverse have the same digits *)
    else let s = string_of_int n in
         let r = String.rev s in
         s = r


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is undulating or not. *)
