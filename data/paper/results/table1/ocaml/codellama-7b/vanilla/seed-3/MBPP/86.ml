let rec centered_hexagonal_number (n : int) : int =
  if n = 1 then
    1
  else
    let nth_prev_hexagonal = centered_hexagonal_number (n - 1) in
    let next_hexagonal = nth_prev_hexagonal + 4 * n - 2 in
    if next_hexagonal - nth_prev_hexagonal > 4 * n - 2 then
      next_hexagonal - 4 * n + 2
    else
      next_hexagonal

let main () : unit =
  let nth_centered_hexagonal = centered_hexagonal_number 10 in
  Printf.printf "%d\n" nth_centered_hexagonal


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find nth centered hexagonal number. *)
