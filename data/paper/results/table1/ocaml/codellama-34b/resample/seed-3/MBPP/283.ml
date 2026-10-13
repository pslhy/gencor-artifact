(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function takes in an integer and check whether the frequency of each digit in the integer is less than or equal to the digit itself. *)
let rec validate (n : int) : bool =
  if n < 10 then
    true
  else
    let freq = Hashtbl.create 10 in
    let rec loop n =
      if n = 0 then true
      else
        let digit = n mod 10 in
        let count =
          try
            Hashtbl.find freq digit
          with Not_found ->
            0 in
        if count > digit then
          false
        else begin
          Hashtbl.add freq digit count + 1;
          loop (n / 10) end
    loop n in
    validate (n / 10) && validate (n % 10)

