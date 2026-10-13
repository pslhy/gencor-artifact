let rec insert_element (list : string list) (element : string) : string list =
  match list with
  | [] -> []
  | hd :: tl -> hd :: (element :: (insert_element tl element))

let () =
  let test_list = ["a"; "b"; "c"] in
  let result = insert_element test_list "x" in
  assert (result = ["x"; "a"; "x"; "b"; "x"; "c"])


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in a list and an element and inserts the element before each element in the list, and returns the resulting list. *)
