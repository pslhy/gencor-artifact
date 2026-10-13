let rec sum_div (number : int) : int =
  let rec loop x i sum =
    if x < i then sum
    else if number mod i = 0 then loop x (i + 1) (sum + i)
    else loop x (i + 1) sum
  in
  loop number 1 0

(* Test cases *)
let () = assert(sum_div 12 = 18) (* 1, 2, 3, 4, 6, 12 = 18 *)
let () = assert(sum_div 20 = 42) (* 1, 2, 4, 5, 10, 20 = 42 *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to return the sum of all divisors of a number. *)
