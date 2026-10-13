let rec int_to_mini_roman (number : int) : string =
  let m, remainder = number / 1000, number mod 1000 in
  let d, remainder = remainder / 500, remainder mod 500 in
  let c, remainder = remainder / 100, remainder mod 100 in
  let l, remainder = remainder / 50, remainder mod 50 in
  let x, remainder = remainder / 10, remainder mod 10 in
  let v, remainder = remainder / 5, remainder mod 5 in
  let i           = remainder in
  let m_r          = String.make m 'm' in
  let d_r          = String.make d 'd' in
  let c_r          = String.make c 'c' in
  let l_r          = String.make l 'l' in
  let x_r          = String.make x 'x' in
  let v_r          = String.make v 'v' in
  let i_r          = String.make i 'i' in
  let res = if m > 0 then m_r ^ if d > 0 then d_r ^ if c > 0 && c < 4 then c_r ^ String.make (c-1) 'i' ^ "i" ^ "x" else if c = 4 then c_r ^ "l" else "dcc" ^ String.make (c-5) 'c' else "" ^ if l > 0 then l_r ^ if x > 0 then x_r ^ if v > 0 then v_r ^ String.make (v-1) 'i' ^ "i" ^ "v" else if v = 4 then v_r ^ "x" else "lx" ^ String.make (v-5) 'v' else "" ^ if x > 0 then x_r ^ if i > 0 then i_r ^ String.make (i-1) 'i' else if i = 4 then i_r ^ "v" else "ix" ^ String.make (i-5) 'i' else "" in
  String.lowercase res;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a positive integer, obtain its roman numeral equivalent as a string, *)
(*     and return it in lowercase. *)
(*     Restrictions: 1 <= num <= 1000 *)
(*     Examples: *)
(*     >>> int_to_mini_roman 19 *)
(*     "xix" *)
(*     >>> int_to_mini_roman 152 *)
(*     "clii" *)
(*     >>> int_to_mini_roman 426 *)
(*     "cdxxvi" *)
