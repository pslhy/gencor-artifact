
let rec max_sub_array_sum_repeated (a : int list) (n : int) (k : int) : int =
  if n = 1 then max_sub_array_sum_repeated a (n + 1) k
  else if n = k + 1 then List.fold_left (+) 0 (List.map (fun x -> x * k) a)
  else
    let sum = List.fold_left (+) 0 (List.map (fun x -> x * k) a) in
    let s = ref sum in
    for i = 1 to k - n do
      s := sum + !s - (a.(i - 1) * k) + a.(i + k - 1) * k
    done;
    max !s (max_sub_array_sum_repeated a (n + 1) k)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the largest sum of a contiguous list in the modified list which is formed by repeating the given list k times. *)
