(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of non-empty substrings of a given string. *)
let rec number_of_substrings (str : string) : int =
    let acc = ref 0 in
    for i = 0 to String.length str - 1 do
        if str.[i] <> ' ' then begin
            acc := !acc + 1;
            for j = i + 1 to String.length str - 1 do
                if str.[j] <> ' ' then acc := !acc + 1;
        end
    done;
    !acc

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:17: Syntax error: "done" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec number_of_substrings (str : string) : int =
  let acc = ref 0 in
  for i = 0 to String.length str - 1 do
    if str.[i] <> ' ' then begin
      acc := !acc + 1;
      for j = i + 1 to String.length str - 1 do
        if str.[j] <> ' ' then acc := !acc + 1;
    end;
  done

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:9: Syntax error: "done" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec number_of_substrings (str : string) : int =
  let acc = ref 0 in
  for i = 0 to String.length str - 1 do
    if str.[i] <> ' ' then begin
      acc := !acc + 1;
      for j = i + 1 to String.length str - 1 do
        if str.[j] <> ' ' then acc := !acc + 1;
      end;
    end;
  done

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:9: Syntax error: "done" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec number_of_substrings (str : string) : int =
  let acc = ref 0 in
  for i = 0 to String.length str - 1 do
    if str.[i] <> ' ' then begin
      acc := !acc + 1;
      for j = i + 1 to String.length str - 1 do
        if str.[j] <> ' ' then acc := !acc + 1;
      done;
    end;
  done

