(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in an integer n and returns the sum of the squares of the first n odd natural numbers. *)
let rec square_Sum (n : int) : int =
  if n = 0 then 0
  else let odd = n * (n + 1)
              |> (fun x -> x mod 2 = 1)
      in odd |> square |> (+) (square_Sum (n - 1))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:17: Unbound value "square" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec square_Sum (n : int) : int =
  if n = 0 then 0
  else let odd = n * (n + 1)
              |> (fun x -> x mod 2 = 1)
      in odd |> (fun x -> x * x) |> (+) (square_Sum (n - 1))

