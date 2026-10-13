let rec sum_even_and_even_index (arr : int list) : int =
  if List.length arr = 0 then
    0
  else if arr.(0) mod 2 = 1 then
    sum_even_and_even_index arr.(1..)
  else
    let (hd, tl) = List.hd arr, List.tl arr in
    hd + sum_even_and_even_index tl

let () =
  let test_list = [2; 4; 6; 8; 10] in
  assert (sum_even_and_even_index test_list = 20);
  let test_list2 = [1; 3; 5; 7; 9] in
  assert (sum_even_and_even_index test_list2 = 0);
  let test_list3 = [] in
  assert (sum_even_and_even_index test_list3 = 0)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of even numbers at even positions of a list. *)
