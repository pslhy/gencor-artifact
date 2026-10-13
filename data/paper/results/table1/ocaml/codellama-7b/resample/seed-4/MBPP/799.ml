(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to that rotate left bits by d bits a given number. We assume that the number is 32 bit. *)
let rec left_rotate (n : int) (d : int) : int =
  if d = 0 then
    n
  else
    let (h, l) = 
      let h : int = n lsr 32 - d in
      h lsr d <|> l lsl 32 - d
    in
    h lor (left_rotate h d)
 
(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:15: Unbound value "(<|>)" *)
(*     Hint: Did you mean "<>" or "|>"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec left_rotate (n : int) (d : int) : int =
  if d = 0 then
    n
  else
    let (h, l) = 
      let h : int = n lsr 32 - d in
      h lsl d <|> l lsr 32 - d
    in
    h lor (left_rotate h d)
 
(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:15: Unbound value "(<|>)" *)
(*     Hint: Did you mean "<>" or "|>"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec left_rotate (n : int) (d : int) : int =
  if d = 0 then
    n
  else
    let (h, l) = 
      let h : int = n lsr 32 - d in
      h lsl d <> l lsr 32 - d
    in
    h lor (left_rotate h d)
 
(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:18: Unbound value "l" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec left_rotate (n : int) (d : int) : int =
  if d = 0 then
    n
  else
    let (h, l) = 
      let h : int = n lsr 32 - d in
      h lsl d <> l lsr 32 - d
    in
    h lor (left_rotate h d)
 
(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:18: Unbound value "l" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec left_rotate (n : int) (d : int) : int =
  if d = 0 then
    n
  else
    let (h, l) = 
      let h : int = n lsr 32 - d in
      (h lsl d) lor l
    in
    left_rotate h d
 
