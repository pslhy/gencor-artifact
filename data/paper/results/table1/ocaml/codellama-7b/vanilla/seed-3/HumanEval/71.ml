let rec triangle_area (a : int) (b : int) (c : int) : float =
  if a < 0 || b < 0 || c < 0 then begin
    -1.0
  end else begin
    let l1 = float_of_int a
    and l2 = float_of_int b
    and l3 = float_of_int c
    in
    let sum = l1 + l2
    and hypotenuse = sqrt (l1 ** 2.0 + l2 ** 2.0)
    in
    if sum > l3 then begin
      let p = (l1 * l2) / (2.0 * hypotenuse)
      in
      p * hypotenuse
    end else begin
      -1.0
    end
  end


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given the lengths of the three sides of a triangle. Return the area of *)
(*     the triangle rounded to 2 decimal points if the three sides form a valid triangle. *)
(*     Otherwise return -1 *)
(*     Three sides make a valid triangle when the sum of any two sides is greater *)
(*     than the third side. *)
(*     Example: *)
(*     >>> triangle_area 3 4 5 *)
(*     6.0 *)
(*     >>> triangle_area 1 2 10 *)
(*     (-1).0 *)
