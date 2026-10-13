(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the difference of the first even and first odd number of a given list. *)
let rec diff_even_odd (list1 : int list) : int =
  if list1 = [] then failwith "Empty list" else
    let list2 = List.filter (fun x -> x mod 2 = 0) list1 in
    let list3 = List.filter (fun x -> x mod 2 = 1) list1 in
    match (list2, list3) with
    | [], [] -> failwith "No even or odd numbers"
    | [], _ -> failwith "No even numbers"
    | _, [] -> failwith "No odd numbers"
    | hd1 :: _, hd2 :: _ -> hd1 - hd2

