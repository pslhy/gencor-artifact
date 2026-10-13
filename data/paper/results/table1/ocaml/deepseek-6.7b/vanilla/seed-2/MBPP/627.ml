let rec find_First_Missing (array : int list) : int =
  let rec loop i =
    match array with
    | [] -> i
    | h::t -> if h = i then loop (i + 1) else i in
  loop 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the smallest missing number from a sorted list of natural numbers. *)
