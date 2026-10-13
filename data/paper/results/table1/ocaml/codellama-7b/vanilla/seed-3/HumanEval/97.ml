let rec multiply (a : int) (b : int) : int =
  if a = 0 || b = 0 then 0
  else begin
    let unit_a = a mod 10 in
    let unit_b = b mod 10 in
    unit_a * unit_b +
    multiply (a / 10) (b / 10)
  end

;;

let%test "Multiplication of 148 and 412 results in 16" =
  multiply 148 412 = 16
;;

let%test "Multiplication of 19 and 28 results in 72" =
  multiply 19 28 = 72
;;

let%test "Multiplication of 2020 and 1851 results in 0" =
  multiply 2020 1851 = 0
;;

let%test "Multiplication of 14 and -15 results in 20" =
  multiply 14 (-15) = 20
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Complete the function that takes two integers and returns *)
(*     the product of their unit digits. *)
(*     Assume the input is always valid. *)
(*     Examples: *)
(*     >>> multiply 148 412 *)
(*     16 *)
(*     >>> multiply 19 28 *)
(*     72 *)
(*     >>> multiply 2020 1851 *)
(*     0 *)
(*     >>> multiply 14 (-15) *)
(*     20 *)
