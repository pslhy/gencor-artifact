
let rec pair_xor_Sum (arr : int list) (n : int) : int =
  match arr with
  | [] -> 0
  | h :: t -> (h lxor n) + pair_xor_Sum t n


let sum_xor_all_pairs (arr : int list) : int =
    Array.fold_left (fun res x -> pair_xor_Sum x res) 0 arr

let () =
    assert (sum_xor_all_pairs [1; 2; 3; 4; 5] = 15);
    assert (sum_xor_all_pairs [1; 1; 1; 1; 1] = 0);
    assert (sum_xor_all_pairs [] = 0);
    assert (sum_xor_all_pairs [10; 20; 30; 40; 50] = 150);
    assert (sum_xor_all_pairs [100; 200; 300; 400; 500] = 1500);

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of xor of all pairs of numbers in the given list. *)
