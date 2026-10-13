let rec specialFilter (nums : int list) : int = 
  let isOddDigit (d : int) : bool = d mod 2 <> 0 in
  let firstDigit (n : int) : int = 
    let rec go x = if x < 10 then x else go (x / 10) in
    if n < 0 then go (-n) else go n in
  let lastDigit (n : int) : int = abs n mod 10 in
  let rec count acc = function
    | [] -> acc
    | x::xs -> 
        if x > 10 && isOddDigit (firstDigit x) && isOddDigit (lastDigit x)
        then count (acc + 1) xs
        else count acc xs
  in count 0 nums


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
