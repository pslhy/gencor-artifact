let rec int_to_mini_roman (number : int) : string = 
  let rec convert (num : int) (acc : string) : string =
    match num with
    | 0 -> acc
    | n when n >= 1000 -> convert (n - 1000) (acc ^ "m")
    | n when n >= 900 -> convert (n - 900) (acc ^ "cm")
    | n when n >= 500 -> convert (n - 500) (acc ^ "d")
    | n when n >= 400 -> convert (n - 400) (acc ^ "cd")
    | n when n >= 100 -> convert (n - 100) (acc ^ "c")
    | n when n >= 90 -> convert (n - 90) (acc ^ "xc")
    | n when n >= 50 -> convert (n - 50) (acc ^ "l")
    | n when n >= 40 -> convert (n - 40) (acc ^ "xl")
    | n when n >= 10 -> convert (n - 10) (acc ^ "x")
    | n when n >= 9 -> convert (n - 9) (acc ^ "ix")
    | n when n >= 5 -> convert (n - 5) (acc ^ "v")
    | n when n >= 4 -> convert (n - 4) (acc ^ "iv")
    | n -> convert (n - 1) (acc ^ "i")
  in
  convert number ""


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a positive integer, obtain its roman numeral equivalent as a string, *)
(*     and return it in lowercase. *)
(*     Restrictions: 1 <= num <= 1000 *)
(*     Examples: *)
(*     >>> int_to_mini_roman 19 *)
(*     "xix" *)
(*     >>> int_to_mini_roman 152 *)
(*     "clii" *)
(*     >>> int_to_mini_roman 426 *)
(*     "cdxxvi" *)
