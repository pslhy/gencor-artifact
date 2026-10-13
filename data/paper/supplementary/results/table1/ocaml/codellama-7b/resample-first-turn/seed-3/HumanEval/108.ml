let rec count_nums (arr : int list) : int =
  match arr with
  | [] -> 0
  | h :: t ->
    let signed_digits =
      h
      |> abs
      |> string_of_int
      |> Digits.create_by_string
      |> List.map ~f:sign
    in
    let sum_of_digits = List.reduce_exn ~f: (+) signed_digits in
    if sum_of_digits > 0 then 1 + count_nums t else count_nums t

and sign x =
  if x > 0 then 1 else -1

let rec Digits.create_by_string (str : string) : int list =
  if str = "" then [] else str.[0] :: Digits.create_by_string (String.drop_prefix str 1)

let%test "count_nums_test_1" = count_nums [] = 0
let%test "count_nums_test_2" = count_nums [(-1); 11; (-11)] = 1
let%test "count_nums_test_3" = count_nums [1; 1; 2] = 3


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
