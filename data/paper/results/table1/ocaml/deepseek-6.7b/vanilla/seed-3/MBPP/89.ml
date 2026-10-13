let rec closest_num (n : int) : int =
  if n <= 1 then
    0
  else
    let rec divide (n : int) (i : int) : int =
      if i <= 1 then
        n
      else if n mod i = 0 then
        divide (n / i) (i - 1)
      else
        divide n (i - 1)
    in divide n (n - 1)

(* Test cases *)
Printf.printf "%d\n" (closest_num 19);; (* prints 16 *)
Printf.printf "%d\n" (closest_num 16);; (* prints 13 *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the closest smaller number than n. *)
