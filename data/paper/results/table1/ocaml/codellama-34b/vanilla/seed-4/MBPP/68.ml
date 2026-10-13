let rec is_Monotonic (a : int list) : bool = 
    (* base case: a list with only 2 elements should return true *)
    if a length < 3 then true else
    (* do the check for the first 2 elements *)
    let first_two_equal = a.hd == a.hd + 1 in
    let last_two_equal = a.rev.hd == a.rev.hd + 1 in
    (* base case: if the first two or last two elements equal *)
    if first_two_equal || last_two_equal then true else
    (* recursive case: check the rest of the list *)
    is_Monotonic (a.tl)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given list is monotonic or not. *)
