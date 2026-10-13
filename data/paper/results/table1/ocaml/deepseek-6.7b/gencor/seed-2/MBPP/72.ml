
let rec dif_Square (n : int) : bool =
  let rec sqrt (n : int) : int =
    let rec square a = a * a in
    let rec aux a b =
      if square a > n then b
      else aux (a + 1) a in
    aux 0 0
  in
  let rec aux2 (n : int) : bool =
    if n = 0 then true
    else let x = sqrt n in
      if x * x = n then true
      else if x = 0 then false
      else aux2 (n - (x * x) * 2) in
  aux2 n

(* Test Cases *)
let test1 = dif_Square 3
let test2 = dif_Square 4
let test3 = dif_Square 5
let test4 = dif_Square 6
let test5 = dif_Square 7

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given number can be represented as the difference of two squares or not. *)
