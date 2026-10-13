let rec find_star_num (n : int) : int =
  let rec aux (acc : int) (num : int) : int =
    if num > 0 then
      let fact = factorial num in
      if acc = n then
        num
      else
        aux (acc + 1) (num - 1)
    else
      0
  in
  aux 0 (factorial n)
and factorial (n : int) =
  let rec aux (acc : int) (n : int) : int =
    if n = 0 then
      acc
    else
      aux (n * acc) (n - 1)
  in
  aux 1 n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the n'th star number. *)
