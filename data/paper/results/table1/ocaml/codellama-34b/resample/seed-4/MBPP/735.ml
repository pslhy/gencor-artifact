(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to toggle bits of the number except the first and the last bit. https://www.geeksforgeeks.org/toggle-bits-number-expect-first-last-bits/ *)
let rec toggle_middle_bits (n : int) : int = 
    (* Get the unit's binary representation and toggle the bits with their complements *)
    let rec toggle_bits (repr : char array) (i : int) : int = 
        (* Base case: If i is greater than the length of the representation, return the result *) 
        if i >= Array.length repr then int_of_string repr
        else
            (* Toggle the ith bit with its complement *) 
            let complement = repr.[i] == '1'
            repr.[i] <- if complement then '0' else '1'
            toggle_bits repr (i+1) in
    toggle_bits (string_of_int n) 1

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:22: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec toggle_middle_bits (n : int) : int =
  let rec toggle_bits (repr : char array) (i : int) : int =
    if i >= Array.length repr then int_of_string repr
    else
      let complement = repr.[i] == '1'
      repr.[i] <- if complement then '0' else '1'
      toggle_bits repr (i+1) in
  toggle_bits (string_of_int n) 1

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:16: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec toggle_middle_bits (n : int) : int =
  let rec toggle_bits (repr : char array) (i : int) : int =
    if i >= Array.length repr then int_of_string repr
    else
      let complement = repr.[i] == '1' in
      repr.[i] <- if complement then '0' else '1';
      toggle_bits repr (i+1)

let () =
  let n = read_int () in
  let result = toggle_middle_bits n in
  Printf.printf "n = %d\n" n;
  Printf.printf "result = %d\n" result

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:7: Syntax error: strings are immutable, there is no assignment syntax for them. *)
(*     Hint: Mutable sequences of bytes are available in the Bytes module. *)
(*     Hint: Did you mean to use "Bytes.set"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec toggle_middle_bits (n : int) : int =
  let rec toggle_bits (repr : bytes) (i : int) : int =
    if i >= Bytes.length repr then int_of_string (Bytes.to_string repr)
    else
      let complement = match Bytes.get repr i with
        | '1' -> '0'
        | '0' -> '1'
        | _ -> assert false
      in
      Bytes.set repr i complement;
      toggle_bits repr (i + 1)

let () =
  let n = read_int () in
  let result = toggle_middle_bits n in
  Printf.printf "n = %d\n" n;
  Printf.printf "result = %d\n" result

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec toggle_middle_bits (n : int) : int =
  let rec toggle_bits (repr : bytes) (i : int) : int =
    if i >= Bytes.length repr then int_of_string (Bytes.to_string repr)
    else
      let complement = match Bytes.get repr i with
        | '1' -> '0'
        | '0' -> '1'
        | _ -> assert false
      in
      Bytes.set repr i complement;
      toggle_bits repr (i + 1)

let () =
  let n = read_int () in
  let result = toggle_middle_bits n in
  Printf.printf "n = %d\n" n;
  Printf.printf "result = %d\n" result

