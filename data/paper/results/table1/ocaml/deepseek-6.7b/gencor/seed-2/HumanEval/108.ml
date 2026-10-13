
let rec count_nums (arr : int list) : int =
  match arr with
  | [] -> 0
  | h::t ->
     let sum_digits =
       String.to_seq h
       |> List.of_seq
       |> List.filter ((<>) '-')
       |> List.map (fun c -> int_of_char c - 48)
       |> List.fold_left (+) 0 in
     if sum_digits > 0 then 1 else 0
     |> (+) (count_nums t)

let () =
  assert (count_nums [] = 0);
  assert (count_nums [(-1); 11; (-11)] = 1);
  assert (count_nums [1; 1; 2] = 3)

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
