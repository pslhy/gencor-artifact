
let rec remove_vowels (text : string) : string =
    match text with
    | "" -> ""
    | _ ->
        let vowels = ['a'; 'e'; 'i'; 'o'; 'u']
        text
        |> String.split_on_char ' '
        |> List.filter (fun x -> not (List.mem x valid_float_lexem))
        (* TODO: remove leading and trailing whitespaces *)
        (* List.map (fun x -> x // remove this line and
                       let p = String.index_of(' ');
                       String.remove_end p ();
                     )
                     $ valid_float_lexem $ *)
        (* TODO: add the removed chars to the result string *)
        (* List.fold_left (fun acc x -> acc *. 10 +. float_of_char x) 0.0 *)
        (* TODO: convert the string to an integer and return it *)
        (* int_of_float *)

(* Test cases *)

(* let%test = remove_vowels "" = "" *)
(* let%test = remove_vowels "a" = "" *)
(* let%test = remove_vowels "A" = "" *)
(* let%test = remove_vowels "Aa" = "" *)
(* let%test = remove_vowels "AaBbCcDd" = "" *)
(* let%test = remove_vowels "AaBbCcDdEe" = "" *)
(* let%test = remove_vowels "AaBbCcDdEeFf" = "" *)
(* let%test = remove_vowels "AaBbCcDdEeFfGg" = "" *)
(* let%test = remove_vowels "AaBbCcDdEeFfGgHh" = "" *)
(* let%test = remove_vowels "AaBbCcDdEeFfGgHhIi" = "" *)
(* let%test = remove_vowels "AaBbCcDdEeFfGgHhIiJj" = "" *)
(* let%test = remove_vowels "AaBbCcDdEeFfGgHhIiJjKk" = "" *)
(* let%test = remove_vowels "AaBbCcDdEeFfGgHhIiJjKkLl" = "" *)
(* let%test = remove_vowels "AaBbCcDdEeFfGgHhIiJjKkLlMm" = "" *)
(* let%test = remove_vowels "AaBbCcDdEeFfGgHhIiJjKkLlMmNn" = "" *)
(* let%test = remove_vowels "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOo" = "" *)
(* let%test = remove_vowels "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPp" = "" *)
(* let%test = remove_vowels "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQq" = "" *)
(* let%test = remove_vowels "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRr" = "" *)
(* let%test = remove_vowels "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSs" = "" *)
(* let%test = remove_vowels "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTt" = "" *)
(* let%test = remove_vowels "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUu" = "" *)
(* let%test = remove_vowels "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVv" = "" *)
(* let%test = remove_vowels "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWw" = "" *)
(* let%test = remove_vowels "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXx" = "" *)
(* let%test = remove_vowels "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYy" = "" *)
(* let%test = remove_vowels "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz" = "" *)

(* let%test = remove_vowels "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1" = "1" *)
(* let%test = remove_vowels "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZzA" = "A" *)
(* let%test = remove_vowels "_A_B_C_D_E_F_G_H_I_J_K_L_M_N_O_P_Q_R_S_T_U_V_W_X_Y_Z_"

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     remove_vowels is a function that takes string and returns string without vowels. *)
(*     >>> remove_vowels "" *)
(*     "" *)
(*     >>> remove_vowels "abcdef" *)
(*     "bcdf" *)
(*     >>> remove_vowels "aaaaa" *)
(*     "" *)
(*     >>> remove_vowels "aaBAA" *)
(*     "B" *)
(*     >>> remove_vowels "zbcd" *)
(*     "zbcd" *)
