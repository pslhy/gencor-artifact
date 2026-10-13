(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find maximum run of uppercase characters in the given string. *)
let rec max_run_uppercase (test_str : string) : int = 
    (* base case: if the string is empty or there are no uppercase characters, return 0 *)
    if String.length test_str = 0 || not (List.exists (fun x -> Char.is_uppercase x) test_str) then 0
    else 
        (* recursion step: find the maximum run of uppercase characters starting at the beginning of the string *)
        let result = ref 0 in
        for i = 0 to String.length test_str - 1 do
            if Char.is_uppercase test_str.[i] then
                result :=
                    List.fold_left
                        (fun acc x -> if i < x && Char.is_uppercase test_str.[x] then max (x - i + 1) !acc else !acc)
                        (i + 1)
                        (List.tl (String.explode test_str.[i]))
        done;
        !result

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:65: Unbound value "Char.is_uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_run_uppercase (test_str : string) : int = 
  (* base case: if the string is empty or there are no uppercase characters,
  return 0 *)
  if String.length test_str = 0 || not (List.exists (fun x -> Char.is_uppercase x) test_str) then 0
  else 
    (* recursion step: find the maximum run of uppercase characters starting at
    the beginning of the string *)
    let result = ref 0 in
    for i = 0 to String.length test_str - 1 do
      if Char.is_uppercase test_str.[i] then
        result :=
          List.fold_left
            (fun acc x -> if i < x && Char.is_uppercase test_str.[x] then max (x - i + 1) !acc else !acc)
            (i + 1)
            (List.tl (String.explode test_str.[i]))
    done;
    !result

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:63: Unbound value "Char.is_uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_run_uppercase (test_str : string) : int = 
  (* base case: if the string is empty or there are no uppercase characters,
  return 0 *)
  if String.length test_str = 0 || not (String.contains test_str '\n') then 0
  else 
    (* recursion step: find the maximum run of uppercase characters starting at
    the beginning of the string *)
    let result = ref 0 in
    for i = 0 to String.length test_str - 1 do
      if String.get test_str i = '\n' then
        result :=
          List.fold_left
            (fun acc x -> if i < x && String.get test_str x = '\n' then max (x - i + 1) !acc else !acc)
            (i + 1)
            (List.tl (String.explode test_str.[i]))
    done;
    !result

