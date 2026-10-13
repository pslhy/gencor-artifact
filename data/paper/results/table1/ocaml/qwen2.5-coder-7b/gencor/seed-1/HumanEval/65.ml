
let rec circular_shift (x : int) (shift : int) : string = 
  let digits = String.of_seq @@ Seq.of_dispenser
ref

seek_out
      x
      in
  let len = String.length digits in
  if shift >= len then
    String.map (fun c -> c) (String.make len (digits.[0]))
  else
    let rec shift_right s n =
      if n = 0 then s else
        let first = String.get s 0 in
        shift_right (String.sub s 1 (String.length s - 1) ^ String.make 1 first) (n - 1)
    in
    shift_right digits shift

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Circular shift the digits of the integer x, shift the digits right by shift *)
(*     and return the result as a string. *)
(*     If shift > number of digits, return digits reversed. *)
(*     >>> circular_shift 12 1 *)
(*     "21" *)
(*     >>> circular_shift 12 2 *)
(*     "12" *)
