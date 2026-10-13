let rec validate (n : int) : bool =
  match n with
  | 0 -> true
  | _ -> let (q, r) = (n / 10, n mod 10) in
    if r > q then false
    else validate q

let rec count_digits (n : int) (d : int) : int =
  match n with
  | 0 -> 0
  | _ -> let (q, r) = (n / 10, n mod 10) in
    if r = d then 1 + count_digits q d
    else count_digits q d

let check_digits (n : int) : bool =
  if validate n = false then false
  else
    let rec checker (n : int) : bool =
      match n with
      | 0 -> true
      | _ -> let (q, r) = (n / 10, n mod 10) in
        (count_digits n r) <= r && checker q
    in
    checker n

let check_integer (n : int) : bool =
  if n <= 0 then false
  else check_digits n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function takes in an integer and check whether the frequency of each digit in the integer is less than or equal to the digit itself. *)
