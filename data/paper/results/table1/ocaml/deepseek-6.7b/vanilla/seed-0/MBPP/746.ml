let rec sector_area (r : int) (a : int) : float option =
    if a > 360 then None
    else Some ((float_of_int (r * r) *. 2.0) *. float_of_int (a) /. 360.0)
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find area of a sector. The function takes the radius and angle as inputs. Function should return None if the angle is larger than 360 degrees. *)
