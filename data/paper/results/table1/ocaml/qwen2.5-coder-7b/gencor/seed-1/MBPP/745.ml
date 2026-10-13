
let rec divisible_by_digits (startnum : int) (endnum : int) : int list = 
  let is_divisible num =
    let str_num = string_of_int num in
    str_num |> String.to_seq 
             |> Seq.for_all (fun d -> d <> '0' && num mod (int_of_char d - int_of_char '0') = 0)
  in
  List.filter is_divisible (List.init (endnum - startnum + 1) (fun i -> startnum + i))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find numbers within a given range from startnum ti endnum where every number is divisible by every digit it contains. https://www.w3resource.com/mlthon-exercises/lambda/mlthon-lambda-exercise-24.php *)
