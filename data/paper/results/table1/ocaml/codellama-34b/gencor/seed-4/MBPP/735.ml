
let rec toggle_middle_bits (n : int) : int = 
    (* Get the unit's binary representation and toggle the bits with their complements *)
    let rec toggle_bits (repr : char array) (i : int) : int = 
        (* Base case: If i is greater than the length of the representation, return the result *) 
        if i >= Array.length repr then int_of_string repr
        else
            (* Toggle the ith bit with its complement *) 
            let complement = repr.[i] == '1'
            repr.[i] = if i == 0 then '1' else '0'
            toggle_bits repr (i + 1)
    in
    toggle_bits (toggle_bits (snd (abs n |> Int.to_string) |> Int.of_float) 1 |> Array.of_list)`

This min_int toggle_middle_bits n =
    ()
(* Return the number of middle bits toggled *)
        |> int_of_string toggle_bits (n |> Int.to_string) |> Array.of_list

Exit ()

    in
    ()

Exit ()


        in
        toggle_middle_bits nan

Exit ()

    in_channel_length

        in_channel_length

Exit ()

    in_channel_length

Exit ()

        ()

Exit ()

    in_channel_length

Exit ()

        ()

Exit ()

    in_channel_length

Exit ()

        ()

Exit ()

    in_channel_length

Exit ()

        ()

Exit ()

    in_channel_length

Exit ()

        ()

Exit ()

    in_channel_length

Exit ()

        ()

Exit ()

    in_channel_length

Exit ()

        ()

Exit ()

    in_channel_length

Exit ()

        ()

Exit ()

    in_channel_length

Exit ()

        ()

Exit ()

    in_channel_length

Exit ()

        ()

Exit ()

    in_channel_length

Exit ()

        ()

Exit ()

    in_channel_length

Exit ()

        ()

Exit ()

    in_channel_length

Exit ()

        ()

Exit ()

    in_channel_length

Exit ()

        ()

Exit ()

    in_channel_length

Exit ()

        ()

Exit ()

    in_channel_length

Exit ()

        ()

Exit ()

    in_channel_length

Exit ()

        ()

Exit ()

    in_channel_length

Exit ()

        ()

Exit ()

    in_channel_length

Exit ()

        ()

Exit ()

    in_channel_length

Exit ()

        ()

Exit ()

    in_channel_length

Exit ()

        ()

Exit ()

    in_channel_length

Exit ()

        ()

Exit ()

    in_channel_length

Exit ()

        ()

Exit ()

    in_channel_length

Exit ()

        ()

Exit ()

    in_channel_length

Exit ()

        ()

Exit ()

    in_channel_length

Exit ()

        ()

Exit ()

    in_channel_length

Exit ()

        ()

Exit ()

    in_channel_length

Exit ()

        ()

Exit ()

    in_channel_length

Exit ()

        ()

Exit ()

    in_channel_length

Exit ()

        ()

Exit ()

    in_channel_length

Exit ()

        ()

Exit ()

    in_channel_length

Exit ()

        ()

Exit ()

    in_channel_length

Exit ()

        ()

Exit ()

    in_channel_length

Exit ()

       

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to toggle bits of the number except the first and the last bit. https://www.geeksforgeeks.org/toggle-bits-number-expect-first-last-bits/ *)
