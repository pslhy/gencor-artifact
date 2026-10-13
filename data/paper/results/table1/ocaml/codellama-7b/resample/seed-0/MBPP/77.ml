(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find whether a number is divisible by 11. *)
let rec is_Diff (n : int) : bool =
  if n = 0 then
    true
  else
    let d = n mod 10
    let main = n mod 11 in
      if n = 0 then
        true
      else
        if d = main then
          is_Diff (n / 10)
        else
          false
        fi
      fi
    fi
  fi in
is_Diff 151

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_Diff (n : int) : bool =
  if n = 0 then
    true
  else
    let d = n mod 10 in
    let main = n mod 11 in
      if n = 0 then
        true
      else
        if d = main then
          is_Diff (n / 10)
        else
          false
        fi
      fi
    fi
  fi

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:15:7: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_Diff (n : int) : bool =
  if n = 0 then
    true
  else
    let d = n mod 10 in
    let main = n mod 11 in
      if n = 0 then
        true
      else
        if d = main then
          is_Diff (n / 10)
        else
          false
        fi
      fi

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:15:7: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_Diff (n : int) : bool =
  if n = 0 then
    true
  else
    let d = n mod 10 in
    let main = n mod 11 in
    if main = d then
      is_Diff (n / 10)
    else
      false

