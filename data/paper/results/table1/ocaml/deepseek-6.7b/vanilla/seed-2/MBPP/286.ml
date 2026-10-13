let rec max_sub_array_sum_repeated (a : int list) (n : int) (k : int) : int =
  let sum = List.fold_left (+) 0 a in
  let rec max_sub_array_k_times ak k =
    if k = 0 then 0
    else max (List.fold_left max 0 ak) (max_sub_array_k_times (ak @ a) (k - 1)) in
  let ak = List.init (k * n) (fun i -> List.nth a (i mod n)) in
  max_sub_array_k_times ak k

let lst = [1; 2; 3; 7; 10]
let k = 2

let () =
  let fnl = List.nth lst ((k - 1) mod (List.length lst)) in
  let sum = max_sub_array_sum_repeated lst (List.length lst) k in
  Printf.printf "%d" sum


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the largest sum of a contiguous list in the modified list which is formed by repeating the given list k times. *)
