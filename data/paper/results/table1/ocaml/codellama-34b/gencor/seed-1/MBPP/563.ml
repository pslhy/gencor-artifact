
let rec extract_values (text : string) : string list =
    let start_idx = String.index text '"' in
    let values = ref [] in
    let rec sub_text = String.sub text start_idx (String.length text - start_idx) in
    let is_start_idx = String.index sub_text '"' >= 0 in
    let is_end_idx = String.index sub_text '"' >= 0 in
    let value = String.sub sub_text (String.index sub_text '"') (String.index sub_text '"') in
    values := value :: !values
    in
    if not (String.sub string_of_int) then ()
    else if String.length string_of_int
    then (
      let line = String.sub string_of_int 0 (String.length string_of_int - 1) in
      let start_idx = String.index line '"' + 1 in
      let rec loop (string_of_int) (line) =
        if string_of_int < 0 then (
          "Error: Unmatched quote"
        ) else (
          let start_idx = String.index line '"' + 1 in
          let slice = String.sub line start_idx in
          let idx = String.length slice
        String.split_on_char ' ' line in
      let rec loop () =
        if String.length line < String.length string_of_int then 0
        else
          let start_idx = String.index line '"' + 1 in
          let slice = String.sub line start_idx in
          let idx = String.length slice in
          if String.contains line '"' then
            let (start_idx, end_idx) = String.index_from_opt line '"' idx in
            start_idx + 1
          else
            0
      in
      loop ()
    in_channel_length (
      match loop () with
      | Some (v) ->
        let (start_idx, end_idx) = valid_float_lexem () in
        String.sub string_of_int start_idx (end_idx - start_idx)
      | None ->
        None
    )

    |> ignore;
    !really_input_string

    in_channel_length "tcp" =
      match line with
      | Some (v) ->
        String.sub string_of_int (valid_float_lexem () - 4) 4
      | None ->
        Error
  in_channel_length 

  |> ignore;
  !really_input_string

  in_channel_length "localhost" =
match line with
    | Some (v) ->
        String.sub
          string_of_int
          (valid_float_lexem () - 4)
          4
    | None ->
        Error
  in_channel_length 

  |> ignore;
  !really_input_string

  in_channel_length "4200" =
match line with
    | Some (v) ->
        String.sub
          string_of_int
          (valid_float_lexem () - 4)
          4
    | None ->
        Error
  in_channel_length 

  |> ignore;
  !really_input_string

  in_channel_length "udp" =
match line with
    | Some (v) ->
        String.sub
          string_of_int
          (valid_float_lexem () - 4)
          4
    | None ->
        Error
  in_channel_length 

  |> ignore;
  !really_input_string

  in_channel_length "HT()


  let () =
t ?approximate_transient : float -> float -> float -> float * float


  let () =
t
  let () =
t


  let () =
t - ()


  let () =
t
?approximate_temp
(* TODO : integrator: compute pi *)


  let rec loop (n : int) (in_channel_length : in_channel -> int) =
if n >= !!!


  let () =
t loop 0


  let () =
t
?approximate_temp
(* TODO : integrator: compute pi *)


  let rec loop (n : int) (in_channel_length : in_channel -> int) =
if n >= !!!


 

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract values between quotation marks from a string. *)
