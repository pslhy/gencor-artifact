let rec square_Sum (n : int) : int =
    if n <= 0 then 0
    else let x = n * n in
         x + square_sum (n-1)

let main () =
    let n = 5 in
    Printf.printf "The sum of the first %d odd natural numbers is: %d" n (square_sum n)

let () = main ()


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in an integer n and returns the sum of the squares of the first n odd natural numbers. *)
