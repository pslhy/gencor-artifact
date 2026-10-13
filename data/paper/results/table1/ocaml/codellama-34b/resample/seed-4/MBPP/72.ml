(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given number can be represented as the difference of two squares or not. *)
let rec dif_Square (n : int) : bool = 
    (* base case: 
      if n = 0 or n = 1, it can be represented *)
    if n = 0 || n = 1 then true
    (* recursive case: 
      if n can be represented as the difference of two squares *)
    else 
        (* find all divisors of n *)
        let divisors = getDivisors n in
        (* check if the difference of any two divisors is a perfect square *)
        let perfectSquares = List.filter (fun x -> x*x = n) divisors in
        not (List.is_empty perfectSquares)

(* gets all divisors of a given number n *)
let rec getDivisors (n : int) : int list = 
    let rec loop i acc = 
        if i > (n / 2) then acc
        else if n mod i = 0 then loop (i+1) (i::acc)
        else loop (i+1) acc in
    loop 1 []

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:24: Unbound value "getDivisors" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec dif_Square (n : int) : bool =
    let get_divisors n =
        let rec loop i acc =
            if i > (n / 2) then acc
            else if n mod i = 0 then loop (i+1) (i::acc)
            else loop (i+1) acc in
        loop 1 [] in
    (* base case:
      if n = 0 or n = 1, it can be represented *)
    if n = 0 || n = 1 then true
    (* recursive case:
      if n can be represented as the difference of two squares *)
    else
        let perfect_squares = List.filter (fun x -> x*x = n) (get_divisors n) in
        not (List.is_empty perfect_squares)

