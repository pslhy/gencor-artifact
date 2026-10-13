let rec find_First_Missing (array : int list) : int =
  if List.length array <= 1 then
    raise (Invalid_argument "array argument must be a sorted list of natural numbers")
  else
    let rec loop (array : int list) (previous : int) (index : int) : int =
      match array with
      | [] -> previous + 1
      | head :: tail ->
	if head <> previous + 1 then head else loop tail head index
    in
	loop array 1 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the smallest missing number from a sorted list of natural numbers. *)
