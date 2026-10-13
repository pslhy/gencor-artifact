let rec fruit_distribution (s : string) (n : int) : int =
  match s with
  | "" -> n
  | _ ->
    let (a, o, m) = parse_distribution s in
    let num_apples = int_of_string a in
    let num_oranges = int_of_string o in
    let num_mango = n - num_apples - num_oranges in
    if num_mango < 0 then
      0
    else
      num_mango

and parse_distribution (s : string) : int * int * int =
  try
    let a = String.index s ' ' in
    let o = String.rindex s ' ' in
    (String.sub s 0 a, String.sub s (a + 1) (o - a - 1), String.sub s (o + 1) (String.length s - o - 1))
  with Not_found -> ("", "", "")


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     In this task, you will be given a string that represents a number of apples and oranges *)
(*     that are distributed in a basket of fruit this basket contains *)
(*     apples, oranges, and mango fruits. Given the string that represents the total number of *)
(*     the oranges and apples and an integer that represent the total number of the fruits *)
(*     in the basket return the number of the mango fruits in the basket. *)
(*     for examble: *)
(*     >>> fruit_distribution "5 apples and 6 oranges" 19 *)
(*     8 *)
(*     >>> fruit_distribution "0 apples and 1 oranges" 3 *)
(*     2 *)
(*     >>> fruit_distribution "2 apples and 3 oranges" 100 *)
(*     95 *)
(*     >>> fruit_distribution "100 apples and 1 oranges" 120 *)
(*     19 *)
