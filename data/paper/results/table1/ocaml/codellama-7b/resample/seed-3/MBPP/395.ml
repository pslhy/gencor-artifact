(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first non-repeated character in a given string. *)
let rec first_non_repeating_character (str1 : string) : string option =
  if String.length str1 <= 1 then
    None
  else begin
    let sorted_str = String.lowercase str1 |> String.to_seq |> List.of_seq |> List.sort compare in
    let rec check_for_first str so_far = function
      | [] -> None
      | hd :: tl ->
        if List.mem hd so_far then
          check_for_first str so_far tl
        else
          Some hd
    in
    check_for_first sorted_str [] (String.to_seq sorted_str |> List.of_seq)
  end

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:22: Unbound value "String.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec first_non_repeating_character (str1 : string) : string option =
  if String.length str1 <= 1 then
    None
  else begin
    let sorted_str = String.to_lowercase str1 |> String.to_seq |> List.of_seq |> List.sort compare in
    let rec check_for_first str so_far = function
      | [] -> None
      | hd :: tl ->
        if List.mem hd so_far then
          check_for_first str so_far tl
        else
          Some hd
    in
    check_for_first sorted_str [] (String.to_seq sorted_str |> List.of_seq)
  end

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:22: Unbound value "String.to_lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec first_non_repeating_character (str1 : string) : string option =
  if String.length str1 <= 1 then
    None
  else begin
    let sorted_str = String.lowercase str1 |> String.to_seq |> List.of_seq |> List.sort compare in
    let rec check_for_first str so_far = function
      | [] -> None
      | hd :: tl ->
        if List.mem hd so_far then
          check_for_first str so_far tl
        else
          Some hd
    in
    check_for_first sorted_str [] (String.to_seq sorted_str |> List.of_seq)
  end

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:22: Unbound value "String.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec first_non_repeating_character (str1 : string) : string option =
  if String.length str1 <= 1 then
    None
  else begin
    let sorted_str = String.lowercase str1 |> String.to_seq |> List.of_seq |> List.sort compare in
    let rec check_for_first str so_far = function
      | [] -> None
      | hd :: tl ->
        if List.mem hd so_far then
          check_for_first str so_far tl
        else
          Some hd
    in
    check_for_first sorted_str [] (String.to_seq sorted_str |> List.of_seq)
  end

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:22: Unbound value "String.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec first_non_repeating_character (str1 : string) : string option =
  if String.length str1 <= 1 then
    None
  else begin
    let sorted_str = String.lowercase str1 in
    let rec check_for_first str so_far = function
      | [] -> None
      | hd :: tl ->
        if List.mem hd so_far then
          check_for_first str so_far tl
        else
          Some hd
    in
    check_for_first sorted_str [] sorted_str
  end

