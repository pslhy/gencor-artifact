let rec two_unique_nums (nums : int list) : int list =
  if nums = [] then
    []
  else if List.mem nums.[0] (two_unique_nums (List.tl nums)) then
    two_unique_nums (List.tl nums)
  else
    nums.[0] :: two_unique_nums (List.tl nums)


let rec unique_nums (nums : int list list) : int list =
  match nums with
  | [] -> []
  | n :: ns ->
  let num = two_unique_nums n in
  num :: unique_nums ns



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to remove duplicate numbers from a given number of lists. *)
