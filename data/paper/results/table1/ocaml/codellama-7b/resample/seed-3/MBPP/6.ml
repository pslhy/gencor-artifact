(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the two numbers differ at one bit position only or not. *)
let rec differ_At_One_Bit_Pos (a : int) (b : int) : bool =
  if a = b then false
  else
    let a_length = num_bits a
    and b_length = num_bits b
    in
    let diff = a_length - b_length
    in
    if diff < 0 then differ_At_One_Bit_Pos (a <<< -diff) b
    else
      let a_high = a >>> (a_length - 1)
      and b_high = b >>> (b_length - 1)
      in
      if a_high <> b_high then true
      else
        let a_low = a &&& (complement a_high)
        and b_low = b &&& (complement b_high)
        in
        differ_At_One_Bit_Pos a_low b_low

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:20: Unbound value "num_bits" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec differ_At_One_Bit_Pos (a : int) (b : int) : bool =
  if a = b then false
  else
    let a_length = num_bits a
    and b_length = num_bits b
    in
    let diff = a_length - b_length
    in
    if diff < 0 then differ_At_One_Bit_Pos (a <<< -diff) b
    else
      let a_high = a >>> (a_length - 1)
      and b_high = b >>> (b_length - 1)
      in
      if a_high <> b_high then true
      else
        let a_low = a &&& (complement a_high)
        and b_low = b &&& (complement b_high)
        in
        differ_At_One_Bit_Pos a_low b_low

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:20: Unbound value "num_bits" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec differ_At_One_Bit_Pos (a : int) (b : int) : bool =
  if a = b then false
  else
    let a_length = Bitwise.num_bits a
    and b_length = Bitwise.num_bits b
    in
    let diff = a_length - b_length
    in
    if diff < 0 then differ_At_One_Bit_Pos (Bitwise.to_int a <<< -diff) b
    else
      let a_high = Bitwise.to_int a >>> (a_length - 1)
      and b_high = Bitwise.to_int b >>> (b_length - 1)
      in
      if a_high <> b_high then true
      else
        let a_low = Bitwise.to_int a &&& complement a_high
        and b_low = Bitwise.to_int b &&& complement b_high
        in
        differ_At_One_Bit_Pos a_low b_low

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:20: Unbound module "Bitwise" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec differ_At_One_Bit_Pos (a : int) (b : int) : bool =
  if a = b then false
  else
    let a_length = Bitwise.num_bits a
    and b_length = Bitwise.num_bits b
    in
    let diff = a_length - b_length
    in
    if diff < 0 then differ_At_One_Bit_Pos (to_int a <<< -diff) b
    else
      let a_high = to_int a >>> (a_length - 1)
      and b_high = to_int b >>> (b_length - 1)
      in
      if a_high <> b_high then true
      else
        let a_low = to_int a &&& complement a_high
        and b_low = to_int b &&& complement b_high
        in
        differ_At_One_Bit_Pos a_low b_low

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:20: Unbound module "Bitwise" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec differ_At_One_Bit_Pos (a : int) (b : int) : bool =
  if a = b then false
  else
    let a_length = Bitwise.num_bits a
    and b_length = Bitwise.num_bits b
    in
    let diff = a_length - b_length
    in
    if diff < 0 then differ_At_One_Bit_Pos (to_int a <<< -diff) b
    else
      let a_high = to_int a >>> (a_length - 1)
      and b_high = to_int b >>> (b_length - 1)
      in
      if a_high <> b_high then true
      else
        let a_low = to_int a &&& complement a_high
        and b_low = to_int b &&& complement b_high
        in
        differ_At_One_Bit_Pos a_low b_low

