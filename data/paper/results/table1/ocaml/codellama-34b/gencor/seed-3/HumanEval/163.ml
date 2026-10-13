
let rec generate_integers (a : int) (b : int) : int list =
  if a = b then []
  else
    let (x, y) = (abs a, abs b) in
    let (r, _) = (x mod 2 = 0) && (y mod 2 = 0) in
    if r then
      let m = min x y in
      let n = max x y in
      let rec loop (i : int) =
        if i > n then []
        else if i mod 2 = 0 then i :: loop (i + 1)
        else loop (i + 1)
      loop m
    []


generate_integers 2 8
generate_integers 8 2
generate_integers 10 14
generate_integers 11 12
generate_integers 13 11
generate_integers 12 13
generate_integers 12 14
generate_integers 12 14
generate_integers 11 10
generate_integers 10 11
generate_integers 12 10
generate_integers 10 12
generate_integers 11 13
generate_integers 13 11
generate_integers 10 10
generate_integers 14 10
generate_integers 10 14
generate_integers 1 100
generate_integers 100 2
generate_integers 100 1
generate_integers 1 1
generate_integers 100 100
generate_integers 1000 2
generate_integers 2000 1000
generate_integers 1000000000 2
generate_integers 1000000000 1000000000
generate_integers 10000000 1
generate_integers 10000000 2
generate_integers 10000000 3
generate_integers 10000000 4
generate_integers 10000000 5
generate_integers 10000000 6
generate_integers 10000000 7
generate_integers 10000000 8
generate_integers 10000000 9
generate_integers 10000000 10
generate_integers 10000000 11
generate_integers 2 2000000000000
generate_integers 1000000000000 2
generate_integers 1000000000000 3
generate_integers 1000000000000 4
generate_integers 1000000000000 5
generate_integers 1000000000000 6
generate_integers 1000000000000 7
generate_integers 1000000000000 8
generate_integers 1000000000000 9
generate_integers 1000000000000 10
generate_integers 1000000000000 11
generate_integers 1000000000000 12
generate_integers 1000000000000 13
generate_integers 1000000000000 14
generate_integers 1000000000000 15
generate_integers 1000000000000 16
generate_integers 1000000000000 17
generate_integers 1000000000000 18
generate_integers 1000000000000 19
generate_integers 1000000000000 20
generate_integers 1000000000000 21
generate_integers 1000000000000 22
generate_integers 1000000000000 100
generate_integers 2000000000000000000 2
generate_integers 2000000000000000000 3
generate_integers 2000000000000000000 4
generate_integers 2000000000000000000 5
generate_integers 2000000000000000000 6
generate_integers 2000000000000000000 7
generate_integers 2000000000000000000 8
generate_integers 2000000000000000000 9
generate_integers 2000000000000000000 10
generate_integers 2000000000000000000 11
generate_integers 2000000000000000000 12
generate_integers 2000000000000000000 13
generate_integers 2000000000

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given two positive integers a and b, return the even digits between a *)
(*     and b, in ascending order. *)
(*     For example: *)
(*     >>> generate_integers 2 8 *)
(*     [2; 4; 6; 8] *)
(*     >>> generate_integers 8 2 *)
(*     [2; 4; 6; 8] *)
(*     >>> generate_integers 10 14 *)
(*     [] *)
