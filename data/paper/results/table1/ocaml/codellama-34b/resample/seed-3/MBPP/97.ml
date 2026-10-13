(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find frequency of each element in a flattened list of lists, returned in an association list. *)
let rec frequency_lists (list1 : int list list) : (int * int) list =
  let rec helper (l : int list list) (acc : (int * int) list) : (int * int) list =
    match l with
    | [] -> acc
    | x :: rest ->
        let (e, c) = x in
        let count = try List.assoc e acc with Not_found -> 0 in
        helper rest ((e, count + 1) :: acc)
  in
  helper list1 []

