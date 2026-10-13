
let rec max_product (arr : int list) : int =
  match arr with
  | [] -> 0
  | [_] -> List.hd arr
  | x :: y :: rest ->
    let seq = max_product arr in
    let prod = x * y in
    if prod > seq then prod
    else if prod < seq then seq
    else x * y * List.hd rest

let rec max_product_helper (arr : int list) : int =
  match arr with
  | [] -> 0
  | [_] -> List.hd arr
  | x :: y :: rest ->
    let seq = max_product_helper arr in
    let prod = x * y in
    if prod > seq then prod
    else if prod < seq then seq
    else x * y * List.hd rest

let rec find_max_product (arr : int list) : int =
  let arr_len = List.length arr in
  let temp = Array.make arr_len 0 in
  temp.(0) <- max_product_helper (List.tl arr);
  let i = ref 0 in
  while (!i < arr_len) do
    temp.(!i) <- max_product_helper (arr.[!i] :: arr.[!i + 1]);
    incr i
  done;
  List.fold_left max temp.(0) temp

let arr = [2; 3; 5; 1; 2; 3; 1; 4] input input
let max_product = find_max_product arr input

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that list. *)
