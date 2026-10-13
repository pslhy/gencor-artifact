let rec specialFilter (nums : int list) : int = 
  let isOddDigit (d : int) : bool = 
    d MOD 2 <> 0 
  and firstDigit (n : int) : int = 
    let rec helper x =
      if x >= 10 then helper (x / 10) else x
    in helper (abs n)
  and lastDigit (n : int) : int = 
    abs n MOD 10
  in 
  List.filter (fun x -> x > 10 && isOddDigit (firstDigit x) && isOddDigit (lastDigit x)) nums |> List.length


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes a list of numbers as input and returns *)
(*     the number of elements in the list that are greater than 10 and both *)
(*     first and last digits of a number are odd (1, 3, 5, 7, 9). *)
(*     For example: *)
(*     >>> specialFilter [15; (-73); 14; (-15)] *)
(*     1 *)
(*     >>> specialFilter [33; (-2); (-3); 45; 21; 109] *)
(*     2 *)
