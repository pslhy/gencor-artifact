let rec count_nums (arr : int list) : int =
  match arr with
  | [] -> 0
  | h :: t ->
    let signed_digits = digits h
    let sum_of_digits = List.fold_left (fun acc x -> acc + x) 0 signed_digits in
    let positive_digits = List.filter (fun x -> x >= 0) signed_digits in
    let sum_of_positive_digits = List.fold_left (fun acc x -> acc + x) 0 positive_digits in
    if (sum_of_positive_digits > 0) then
      1 + count_nums t
    else
      0 + count_nums t
let rec digits (i : int) : int list =
  if i = 0 then
    []
  else
    let rem = i mod 10 in
    let div = i / 10 in
    rem :: digits div
let count = count_nums (List.map (fun x -> x + 1) [-1; 11; -11; 1; 1; 2])
printf "%d" count


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function count_nums which takes a list of integers and returns *)
(*     the number of elements which has a sum of digits > 0. *)
(*     If a number is negative, then its first signed digit will be negative: *)
(*     e.g. -123 has signed digits -1, 2, and 3. *)
(*     >>> count_nums [] *)
(*     0 *)
(*     >>> count_nums [(-1); 11; (-11)] *)
(*     1 *)
(*     >>> count_nums [1; 1; 2] *)
(*     3 *)
