
let rec fruit_distribution (s : string) (n : int) : int =
  if n = 0 then
    0
  else if String.contains s ' ' then
    let apples, oranges =
      String.split_on_char ' ' s
      |> List.map int_of_string
      |> function
           | x :: y :: _ -> (x, y)
           | _ -> (0, 0)
    in
    fruit_distribution (s.[1..(String.length s - 1)]) (n - (oranges + apples)) + apples
  else
    if String.length s > 1 && String.get s 0 = '0' then
      fruit_distribution (String.sub s 2 (String.length s - 2)) n
    else
      fruit_distribution (s.[1..(String.length s - 1)]) (n - int_of_string s)

let rec int_of_string (s : string) : int =
  if s = "" then
    0
  else
    int_of_string (s.[1..(String.length s - 1)]) * 10 + (int_of_char (String.get s 0)) - 48

let has_digit s =
  List.exists (fun x -> x >= '0' && x <= '9') (String.to_seq s)

let rec count_digit (s : string) : int =
  if s = "" then
    0
  else
    if has_digit s.[0] then
      1 + count_digit (s.[1..(String.length s - 1)])
    else
      count_digit (s.[1..(String.length s - 1)])

let (fruit_distribution, int_of_string, has_digit, count_digit) =
  ("fruit_distribution", "int_of_string", "has_digit", "count_digit")

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
