let rec even_Power_Sum (n : int) : int =
  if n = 0 then
    0
  else
    let evens : int list = List.init n ~f:(fun x -> x * 2) in
    let powers : int list = List.init n ~f:(fun x -> x ** 5) in
    List.fold_left evens ~init:0 ~f:(fun acc x -> acc + x)
    + List.fold_left powers ~init:0 ~f:(fun acc x -> acc + x)

;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in an integer n and finds the sum of the first n even natural numbers that are raised to the fifth power. *)
