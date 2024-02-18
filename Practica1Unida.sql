
-- ===== (TRIGGER)===== 

-- COURSE
CREATE TRIGGER Trigger1
ON [BD2].[practica1].[Course]
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @Date DATETIME, @Description NVARCHAR(MAX);

    IF EXISTS (SELECT * FROM inserted)
    BEGIN
        -- Si se insertó una fila
        SELECT @Date = GETDATE(), @Description = 'Se insertó un nuevo curso (Course): ' + Name
        FROM inserted;
    END
    ELSE IF EXISTS (SELECT * FROM deleted)
    BEGIN
        -- Si se eliminó una fila
        SELECT @Date = GETDATE(), @Description = 'Se eliminó un curso (Course): '+ Name
        FROM deleted;
    END
    ELSE
    BEGIN
        -- Si se actualizó una fila
        SELECT @Date = GETDATE(), @Description = 'Se actualizó un curso (Course): '+ Name
        FROM inserted;
    END;

    INSERT INTO [BD2].[practica1].[HistoryLog] (Date, Description)
    VALUES (@Date, @Description);
END;

GO

-- Usuarios

CREATE TRIGGER Trigger2
ON [BD2].[practica1].[Usuarios]
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @Date DATETIME, @Description NVARCHAR(MAX);

    IF EXISTS (SELECT * FROM inserted)
    BEGIN
        -- Si se insertó una fila
        SELECT @Date = GETDATE(), @Description = 'Se insertó un nuevo registro en asignación curso ([CourseAssignment]): ' + Firstname +' '+Lastname
        FROM inserted;
    END
    ELSE IF EXISTS (SELECT * FROM deleted)
    BEGIN
        -- Si se eliminó una fila
        SELECT @Date = GETDATE(), @Description = 'Se eliminó un registro en asignación curso ([CourseAssignment]): '+ Firstname +' '+Lastname
        FROM deleted;
    END
    ELSE
    BEGIN
        -- Si se actualizó una fila
        SELECT @Date = GETDATE(), @Description = 'Se actualizó un registro en asignación curso ([CourseAssignment]): '+ Firstname +' '+Lastname
        FROM inserted;
    END;

    INSERT INTO [BD2].[practica1].[HistoryLog] (Date, Description)
    VALUES (@Date, @Description);
END;
GO
-- Roles

CREATE TRIGGER Trigger3
ON [BD2].[practica1].[Roles]
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @Date DATETIME, @Description NVARCHAR(MAX);

    IF EXISTS (SELECT * FROM inserted)
    BEGIN
        -- Si se insertó una fila
        SELECT @Date = GETDATE(), @Description = 'Se insertó un nuevo registro en (Roles): ' + RoleName
        FROM inserted;
    END
    ELSE IF EXISTS (SELECT * FROM deleted)
    BEGIN
        -- Si se eliminó una fila
        SELECT @Date = GETDATE(), @Description = 'Se eliminó un registro en Roles: '+ RoleName
        FROM deleted;
    END
    ELSE
    BEGIN
        -- Si se actualizó una fila
        SELECT @Date = GETDATE(), @Description = 'Se actualizó un registro en Roles: '+ RoleName
        FROM inserted;
    END;

    INSERT INTO [BD2].[practica1].[HistoryLog] (Date, Description)
    VALUES (@Date, @Description);
END;

GO
-- TFA

CREATE TRIGGER Trigger4
ON [BD2].[practica1].[TFA]
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @Date DATETIME, @Description NVARCHAR(MAX);

    IF EXISTS (SELECT * FROM inserted)
    BEGIN
        -- Si se insertó una fila
        SELECT @Date = GETDATE(), @Description = 'Se insertó un nuevo registro en (TFA): el Id=' + cast(Id as varchar)
        FROM inserted;
    END
    ELSE IF EXISTS (SELECT * FROM deleted)
    BEGIN
        -- Si se eliminó una fila
        SELECT @Date = GETDATE(), @Description = 'Se eliminó un registro en (TFA): el Id='+ cast(Id as varchar)
        FROM deleted;
    END
    ELSE
    BEGIN
        -- Si se actualizó una fila
        SELECT @Date = GETDATE(), @Description = 'Se actualizó un registro en (TFA): el Id='+ cast(Id as varchar)
        FROM inserted;
    END;

    INSERT INTO [BD2].[practica1].[HistoryLog] (Date, Description)
    VALUES (@Date, @Description);
END;

GO
-- CourseAssignment

CREATE TRIGGER Trigger5
ON [BD2].[practica1].[CourseAssignment]
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @Date DATETIME, @Description NVARCHAR(MAX);

    IF EXISTS (SELECT * FROM inserted)
    BEGIN
        -- Si se insertó una fila
        SELECT @Date = GETDATE(), @Description = 'Se insertó un nuevo registro en (CourseAssignment): el Id=' + cast(Id as varchar)
        FROM inserted;
    END
    ELSE IF EXISTS (SELECT * FROM deleted)
    BEGIN
        -- Si se eliminó una fila
        SELECT @Date = GETDATE(), @Description = 'Se eliminó un registro en (CourseAssignment): el Id='+ cast(Id as varchar)
        FROM deleted;
    END
    ELSE
    BEGIN
        -- Si se actualizó una fila
        SELECT @Date = GETDATE(), @Description = 'Se actualizó un registro en (CourseAssignment): el Id='+ cast(Id as varchar)
        FROM inserted;
    END;

    INSERT INTO [BD2].[practica1].[HistoryLog] (Date, Description)
    VALUES (@Date, @Description);
END;

GO
-- CourseTutor

CREATE TRIGGER Trigger6
ON [BD2].[practica1].[CourseTutor]
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @Date DATETIME, @Description NVARCHAR(MAX);

    IF EXISTS (SELECT * FROM inserted)
    BEGIN
        -- Si se insertó una fila
        SELECT @Date = GETDATE(), @Description = 'Se insertó un nuevo registro en (CourseTutor): el Id=' + cast(Id as varchar)
        FROM inserted;
    END
    ELSE IF EXISTS (SELECT * FROM deleted)
    BEGIN
        -- Si se eliminó una fila
        SELECT @Date = GETDATE(), @Description = 'Se eliminó un registro en (CourseTutor): el Id='+ cast(Id as varchar)
        FROM deleted;
    END
    ELSE
    BEGIN
        -- Si se actualizó una fila
        SELECT @Date = GETDATE(), @Description = 'Se actualizó un registro en (CourseTutor): el Id='+ cast(Id as varchar)
        FROM inserted;
    END;

    INSERT INTO HistoryLog (Date, Description)
    VALUES (@Date, @Description);
END;

--INSERT INTO [BD2].[practica1].[ProfileStudent](UserId,Credits) VALUES('3923B261-923B-433B-AA4B-CDB5771969CE',30);

GO
-- CourseTutor

CREATE TRIGGER Trigger7
ON [BD2].[practica1].[CourseTutor]
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @Date DATETIME, @Description NVARCHAR(MAX);

    IF EXISTS (SELECT * FROM inserted)
    BEGIN
        -- Si se insertó una fila
        SELECT @Date = GETDATE(), @Description = 'Se insertó un nuevo registro en (CourseTutor): el Id=' + cast(Id as varchar)
        FROM inserted;
    END
    ELSE IF EXISTS (SELECT * FROM deleted)
    BEGIN
        -- Si se eliminó una fila
        SELECT @Date = GETDATE(), @Description = 'Se eliminó un registro en (CourseTutor): el Id='+ cast(Id as varchar)
        FROM deleted;
    END
    ELSE
    BEGIN
        -- Si se actualizó una fila
        SELECT @Date = GETDATE(), @Description = 'Se actualizó un registro en (CourseTutor): el Id='+ cast(Id as varchar)
        FROM inserted;
    END;

    INSERT INTO [BD2].[practica1].[HistoryLog] (Date, Description)
    VALUES (@Date, @Description);
END;

--INSERT INTO practica1.ProfileStudent(UserId,Credits) VALUES('3923B261-923B-433B-AA4B-CDB5771969CE',30);
GO
-- ProfileStudent

CREATE TRIGGER Trigger8
ON [BD2].[practica1].[ProfileStudent]
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @Date DATETIME, @Description NVARCHAR(MAX);

    IF EXISTS (SELECT * FROM inserted)
    BEGIN
        -- Si se insertó una fila
        SELECT @Date = GETDATE(), @Description = 'Se insertó un nuevo registro en (ProfileStudent): el Id=' + cast(Id as varchar)
        FROM inserted;
    END
    ELSE IF EXISTS (SELECT * FROM deleted)
    BEGIN
        -- Si se eliminó una fila
        SELECT @Date = GETDATE(), @Description = 'Se eliminó un registro en (ProfileStudent): el Id='+ cast(Id as varchar)
        FROM deleted;
    END
    ELSE
    BEGIN
        -- Si se actualizó una fila
        SELECT @Date = GETDATE(), @Description = 'Se actualizó un registro en (ProfileStudent): el Id='+ cast(Id as varchar)
        FROM inserted;
    END;

    INSERT INTO [BD2].[practica1].[HistoryLog] (Date, Description)
    VALUES (@Date, @Description);
END;
GO

-- Notification

CREATE TRIGGER Trigger9
ON [BD2].[practica1].[Notification]
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @Date DATETIME, @Description NVARCHAR(MAX);

    IF EXISTS (SELECT * FROM inserted)
    BEGIN
        -- Si se insertó una fila
        SELECT @Date = GETDATE(), @Description = 'Se insertó un nuevo registro en (Notification): el Id=' + cast(Id as varchar)
        FROM inserted;
    END
    ELSE IF EXISTS (SELECT * FROM deleted)
    BEGIN
        -- Si se eliminó una fila
        SELECT @Date = GETDATE(), @Description = 'Se eliminó un registro en (Notification): el Id='+ cast(Id as varchar)
        FROM deleted;
    END
    ELSE
    BEGIN
        -- Si se actualizó una fila
        SELECT @Date = GETDATE(), @Description = 'Se actualizó un registro en (Notification): el Id='+ cast(Id as varchar)
        FROM inserted;
    END;

    INSERT INTO [BD2].[practica1].[HistoryLog] (Date, Description)
    VALUES (@Date, @Description);
END;
GO

-- TutorProfile

CREATE TRIGGER Trigger10
ON [BD2].[practica1].[TutorProfile]
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @Date DATETIME, @Description NVARCHAR(MAX);

    IF EXISTS (SELECT * FROM inserted)
    BEGIN
        -- Si se insertó una fila
        SELECT @Date = GETDATE(), @Description = 'Se insertó un nuevo registro en (TutorProfile): el Id=' + cast(Id as varchar)
        FROM inserted;
    END
    ELSE IF EXISTS (SELECT * FROM deleted)
    BEGIN
        -- Si se eliminó una fila
        SELECT @Date = GETDATE(), @Description = 'Se eliminó un registro en (TutorProfile): el Id='+ cast(Id as varchar)
        FROM deleted;
    END
    ELSE
    BEGIN
        -- Si se actualizó una fila
        SELECT @Date = GETDATE(), @Description = 'Se actualizó un registro en (TutorProfile): el Id='+ cast(Id as varchar)
        FROM inserted;
    END;

    INSERT INTO [BD2].[practica1].[HistoryLog] (Date, Description)
    VALUES (@Date, @Description);
END;

GO
-- TutorProfile

CREATE TRIGGER Trigger11
ON [BD2].[practica1].[UsuarioRole]
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @Date DATETIME, @Description NVARCHAR(MAX);

    IF EXISTS (SELECT * FROM inserted)
    BEGIN
        -- Si se insertó una fila
        SELECT @Date = GETDATE(), @Description = 'Se insertó un nuevo registro en (UsuarioRole): el Id=' + cast(Id as varchar)
        FROM inserted;
    END
    ELSE IF EXISTS (SELECT * FROM deleted)
    BEGIN
        -- Si se eliminó una fila
        SELECT @Date = GETDATE(), @Description = 'Se eliminó un registro en (UsuarioRole): el Id='+ cast(Id as varchar)
        FROM deleted;
    END
    ELSE
    BEGIN
        -- Si se actualizó una fila
        SELECT @Date = GETDATE(), @Description = 'Se actualizó un registro en (UsuarioRole): el Id='+ cast(Id as varchar)
        FROM inserted;
    END;

    INSERT INTO [BD2].[practica1].[HistoryLog] (Date, Description)
    VALUES (@Date, @Description);
END;
GO

-- =========================== 4. Registro de Usuarios =========================== 
-- Actualmente se necesita que cuando un estudiante sea registrado en el sistema se le reconozca internamente con el 
-- rol de estudiante y las acciones que haga dentro del sistema sean basadas en su perfil de estudiante. Las cuentas 
-- de los usuarios tienen la opción de activar un segundo factor de autenticación por lo tanto cuando el usuario se 
-- registre se debe llevar el control si esta opción la tiene activa o no. Por último, se le enviará un correo de 
-- notificación al usuario que fue registrado en el sistema.
-- Entidades Implicadas:
-- ➢ Usuarios
-- ➢ Usuariorole
-- ➢ ProfileStudent
-- ➢ TFA
-- ➢ Notification
-- Restricciones: Se debe garantizar que el email no esté asociado con ninguna otra cuenta dentro del sistema. El campo EmailConfirmed es Falso o 0,


CREATE PROCEDURE PR1
	-- Validar que el nombre solo tenga letras
		-- Insertar en la tabla TFA
		-- Insertar en la tabla profile student
		-- Agregar el parametro de creditos
		-- Agregar el registro a bitacora
        -- Si todo se ejecuta correctamente, confirmar la transacción
    @FirstName NVARCHAR(50),
    @LastName NVARCHAR(50),
    @Email NVARCHAR(100),
    @DateOfBirth DATE,
    @Password NVARCHAR(50),
    @Credit TINYINT
AS
BEGIN
    -- Declarar variables para almacenar IDs y la fecha actual
    DECLARE @UserId UNIQUEIDENTIFIER, @RoleId UNIQUEIDENTIFIER, @Now DATETIME, @EmailConfirmed BIT, @Status BIT;
    SET @UserId = NEWID();
    SET @Now = GETDATE();
    SET @EmailConfirmed = 0;
    SET @Status = 0;

    -- Iniciar la transacción
    BEGIN TRANSACTION;

    BEGIN TRY
        -- Revisar si el correo electrónico ya está registrado
        IF NOT EXISTS (SELECT 1 FROM [BD2].[practica1].[Usuarios] WHERE [Email] = @Email)
        BEGIN
            -- Intentar realizar la inserción en la tabla Usuarios
            INSERT INTO [BD2].[practica1].[Usuarios]
            ([Id],[FirstName], [LastName], [Email], [DateOfBirth], [Password],[LastChanges], [EmailConfirmed])
            VALUES
            (@UserId,@FirstName, @LastName, @Email, @DateOfBirth, @Password, @Now, @EmailConfirmed);

            -- Intentar realizar la inserción en la tabla UsuarioRole
            INSERT INTO [BD2].[practica1].[UsuarioRole]
            ([RoleId], [UserId], [IsLatestVersion])
            VALUES
            ('F4E6D8FB-DF45-4C91-9794-38E043FD5ACD', @UserId, 1);

            -- Intentar realizar la inserción en la tabla ProfileStudent
            INSERT INTO [BD2].[practica1].[ProfileStudent]
            ([UserId],[Credits]) 
            VALUES
            (@UserId,@Credit);

            -- Intentar realizar la inserción en la tabla TFA
            INSERT INTO [BD2].[practica1].[TFA]
            ([UserId],[Status],[LastUpdate]) 
            VALUES
            (@UserId,@Status,@Now);

            -- Intentar realizar la inserción en la tabla Notification
            INSERT INTO [BD2].[practica1].[Notification]
            ([UserId], [Message], [Date])
            VALUES
            (@UserId, 'Usuario Registrado', @Now);

            -- Si todo se ejecuta correctamente, confirmar la transacción
			INSERT INTO [BD2].[practica1].[HistoryLog] (Date, Description)
			VALUES (@Now, 'Se registro correctamente el usuario' );
            COMMIT TRANSACTION;
        END
        ELSE
        BEGIN
            -- Si el correo electrónico ya existe, lanzar una excepción
            THROW 50000, 'El correo electrónico ya está registrado. correo', 1;
        END
    END TRY
    -- Manejar cualquier error que pueda ocurrir durante las inserciones
    BEGIN CATCH
        
        -- Imprimir información sobre el error (puedes personalizar según tus necesidades)
        PRINT ERROR_MESSAGE();

        -- Revertir la transacción en caso de error
        ROLLBACK TRANSACTION;

		-- Insertar el error en la tabla de historial
        INSERT INTO [BD2].[practica1].[HistoryLog] (Date, Description)
        VALUES (@Now, 'Error al insertar usuario: ' + ERROR_MESSAGE());

    END CATCH;
END;

CREATE PROCEDURE PR2
    @Email NVARCHAR(MAX),
    @CodCourse INT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        -- Iniciar transacción
        BEGIN TRANSACTION;

        DECLARE @RoleIdStudent UNIQUEIDENTIFIER
        DECLARE @RoleIdTutor UNIQUEIDENTIFIER
		DECLARE @TutorCode CHAR
        -- Obtener RoleIds para los roles de Estudiante y Tutor
        SELECT @RoleIdStudent = Id FROM practica1.Roles WHERE RoleName = 'Student'
        SELECT @RoleIdTutor = Id FROM practica1.Roles WHERE RoleName = 'Tutor'
		SET @TutorCode = CONVERT(CHAR(36), NEWID());
        -- Obtener el ID del usuario y su rol actual
        DECLARE @UserId UNIQUEIDENTIFIER
        DECLARE @CurrentRoleId UNIQUEIDENTIFIER
        SELECT @UserId = u.Id, @CurrentRoleId = ur.RoleId
        FROM practica1.Usuarios u 
        INNER JOIN practica1.UsuarioRole ur ON u.Id = ur.UserId 
        WHERE u.Email = @Email AND ur.RoleId IN (@RoleIdStudent, @RoleIdTutor)

        -- Verificar si el usuario existe y está asociado al curso especificado
        IF @UserId IS NOT NULL
        BEGIN
            -- Cambiar el rol del usuario según corresponda
            IF @CurrentRoleId = @RoleIdStudent
            BEGIN
                UPDATE practica1.UsuarioRole
                SET RoleId = @RoleIdTutor
                WHERE UserId = @UserId;
            END
            ELSE
            BEGIN
                UPDATE practica1.UsuarioRole
                SET RoleId = @RoleIdStudent
                WHERE UserId = @UserId;
				--Intentar Asignar perfil Tutor
				INSERT INTO [BD2].[practica1].[TutorProfile]
				([UserId], [TutorCode])
				VALUES
				(@UserId, @TutorCode);
					--Intentar realizar la inserción en la tabla CourseTutor

				INSERT INTO [BD2].[practica1].[CourseTutor]
				([TutorId],[CourseCodCourse])
				VALUES
				(@UserId,@CodCourse);
            END

            -- Insertar la notificación
            INSERT INTO practica1.Notification (UserId, Message, Date)
            VALUES (@UserId, 'Tu rol ha sido actualizado.', GETDATE());

            PRINT 'Role updated successfully.';
        END
        ELSE
        BEGIN
            PRINT 'User does not exist or is not associated with the specified course.';
        END

        -- Confirmar la transacción
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        -- Revertir la transacción en caso de error
        IF @@TRANCOUNT > 0
        BEGIN
            ROLLBACK TRANSACTION;
        END

        PRINT ERROR_MESSAGE();
    END CATCH;
END

CREATE PROCEDURE PR3
    @Email NVARCHAR(MAX),
    @CodCourse INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @UserId UNIQUEIDENTIFIER
    DECLARE @RoleIdStudent UNIQUEIDENTIFIER
    DECLARE @RoleIdTutor UNIQUEIDENTIFIER
    DECLARE @CourseExists INT

    -- Get RoleIds for Student and Tutor roles
    SELECT @RoleIdStudent = Id FROM practica1.Roles WHERE RoleName = 'Student'
    SELECT @RoleIdTutor = Id FROM practica1.Roles WHERE RoleName = 'Tutor'

    -- Check if the course exists
    SELECT @CourseExists = COUNT(*) FROM practica1.Course WHERE CodCourse = @CodCourse

    IF @CourseExists > 0
    BEGIN
        -- Check if the user exists and is not already assigned to the course
        IF EXISTS (SELECT 1 FROM practica1.Usuarios WHERE Email = @Email)
        BEGIN
            SET @UserId = (SELECT Id FROM practica1.Usuarios WHERE Email = @Email)

            IF NOT EXISTS (SELECT 1 FROM practica1.CourseAssignment WHERE StudentId = @UserId AND CourseCodCourse = @CodCourse)
            BEGIN
                -- Insert the user into the CourseAssignment table
                INSERT INTO practica1.CourseAssignment (StudentId, CourseCodCourse)
                VALUES (@UserId, @CodCourse)

                PRINT 'Student successfully assigned to the course.'
            END
            ELSE
            BEGIN
                PRINT 'Student is already assigned to the course.'
            END
        END
        ELSE
        BEGIN
            PRINT 'User with provided email does not exist.'
        END
    END
    ELSE
    BEGIN
        PRINT 'Course with provided code does not exist.'
    END
END

CREATE PROCEDURE PR4
    @RoleName VARCHAR(255)
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        -- Iniciar una transacción
        BEGIN TRANSACTION;

        -- Verificar si el rol ya existe
        IF NOT EXISTS (SELECT 1 FROM BD2.practica1.Roles WHERE RoleName = @RoleName)
        BEGIN
            -- Crear el nuevo rol
            INSERT INTO BD2.practica1.Roles (Id,RoleName)
            VALUES (NEWID(),@RoleName);
            PRINT 'Rol ' + @RoleName + ' creado exitosamente.';
        END
        ELSE
        BEGIN
            PRINT 'El rol ' + @RoleName + ' ya existe.';
        END

        -- Confirmar la transacción
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        -- Revertir la transacción en caso de error
        IF @@TRANCOUNT > 0
        BEGIN
            ROLLBACK TRANSACTION;
        END

        PRINT ERROR_MESSAGE();
    END CATCH;
END

CREATE PROCEDURE PR5
	@CodCourse int,
    @Name VARCHAR(255),
    @CreditsRequired INT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        -- Iniciar una transacción
        BEGIN TRANSACTION;

        DECLARE @NextId INT;

        -- Obtener el último ID de curso
        SELECT @NextId = ISNULL(MAX(CodCourse), 0) + 1 FROM BD2.practica1.Course;

        -- Insertar el nuevo curso
        INSERT INTO BD2.practica1.Course (CodCourse, Name, CreditsRequired)
        VALUES (@CodCourse, @Name, @CreditsRequired);
        PRINT 'Curso ' + @Name + ' creado exitosamente con ID ' + CAST(@CodCourse AS VARCHAR(10));

        -- Confirmar la transacción
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        -- Revertir la transacción en caso de error
        IF @@TRANCOUNT > 0
        BEGIN
            ROLLBACK TRANSACTION;
        END

        PRINT ERROR_MESSAGE();
    END CATCH;
END


CREATE PROCEDURE PR6
AS
BEGIN
    SET NOCOUNT ON;

    -- Validate Firstname and Lastname in Usuarios table
    IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS 
               WHERE TABLE_NAME = 'Usuarios' 
               AND COLUMN_NAME IN ('FirstName', 'LastName'))
    BEGIN
        IF EXISTS (SELECT 1 FROM Usuarios 
                   WHERE ISNULL(FirstName, '') NOT LIKE '%[^a-zA-Z]%' 
                   OR ISNULL(LastName, '') NOT LIKE '%[^a-zA-Z]%')
        BEGIN
            -- Invalid data, raise an error
            THROW 50000, 'Invalid data for FirstName or LastName in table Usuarios. Only letters are allowed.', 1;
            RETURN;
        END
    END

    -- Validate Name and CreditsRequired in Course table
    IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS 
               WHERE TABLE_NAME = 'Course' 
               AND COLUMN_NAME IN ('Name', 'CreditsRequired'))
    BEGIN
        IF EXISTS (SELECT 1 FROM Course 
                   WHERE ISNULL(Name, '') NOT LIKE '%[^a-zA-Z]%' 
                   OR ISNUMERIC(CreditsRequired) <> 1)
        BEGIN
            -- Invalid data, raise an error
            THROW 50000, 'Invalid data for Name or CreditsRequired in table Course. Only letters are allowed for Name and only numbers are allowed for CreditsRequired.', 1;
            RETURN;
        END
    END

    -- Data validation passed, no action needed
    PRINT 'Data validation passed for FirstName, LastName, Name, and CreditsRequired.';
END

CREATE FUNCTION F1
(
    @CodCourse INT
)
RETURNS TABLE
AS
RETURN
(
    SELECT
        [Usuarios].*
    FROM
        [BD2].[practica1].[Usuarios]
    INNER JOIN 
        [BD2].[practica1].[CourseAssignment] ON Usuarios.Id = CourseAssignment.StudentId
    WHERE
         CourseAssignment.CourseCodCourse = @CodCourse
);


CREATE FUNCTION F2
(
    @Id INT
)
RETURNS TABLE
AS
RETURN
(
    SELECT
        C.CodCourse,
        C.Name AS CourseName,
        C.CreditsRequired
    FROM
        [BD2].[practica1].[Course] AS C
    INNER JOIN 
        [BD2].[practica1].[CourseTutor] AS CT ON C.CodCourse = CT.CourseCodCourse
    INNER JOIN 
        [BD2].[practica1].[TutorProfile] AS TP ON CT.TutorId = TP.UserId
    WHERE
        TP.Id = @Id
);

CREATE FUNCTION F3
(
    @Id UNIQUEIDENTIFIER
)
RETURNS TABLE
AS
RETURN
(
    SELECT
        [Id],
        [UserId],
        [Message],
        [Date]
    FROM
        [BD2].[practica1].[Notification]
    WHERE
        [UserId] = @Id
);

CREATE FUNCTION F4()
RETURNS TABLE
AS
RETURN
(
    SELECT
       *
    FROM
        [BD2].[practica1].[HistoryLog]
);




CREATE FUNCTION F5
(
	@Id uniqueidentifier
)
RETURNS TABLE 
AS 
RETURN
(
	SELECT
		U.Firstname,
		U.Lastname,
		U.Email,
		U.DateOfBirth,
		PS.Credits,
		STRING_AGG(R.RoleName, ', ') AS Roles
	FROM
		[BD2].[practica1].[Usuarios] AS U
	INNER JOIN
		[BD2].[practica1].[ProfileStudent] AS PS ON PS.UserId = U.Id
	INNER JOIN
		[BD2].[practica1].[UsuarioRole] AS UR ON UR.UserId = U.Id
	INNER JOIN 
		[BD2].[practica1].[Roles] AS R ON R.Id = UR.RoleId
	--WHERE
	--U.Id=@Id
	 GROUP BY
        U.Firstname,
        U.Lastname,
        U.Email,
        U.DateOfBirth,
        PS.Credits
);


USE BD2
SELECT * FROM F1(110)
select * from BD2.practica1.TutorProfile
SELECT * FROM BD2.practica1.Course
SELECT * FROM BD2.practica1.Usuarios
EXEC PR3 'lucia@gmail.com',110
exec PR5 5,'prueba',5
EXEC PR1 
    @Firstname = 'John',
    @Lastname = 'Doe',
    @Email = 'john.doe@example.com',
    @DateOfBirth = '1990-05-15',
    @Password = 'mypassword',
    @Credit = 100;

select * from F1(110)
EXEC PR2 'john.doe@example.com',110
select * from F2(5)
select * from F3('C87C0856-CA3E-4E2F-8FEC-99FABEF2C261')
select * from F4()
select * from F5('C87C0856-CA3E-4E2F-8FEC-99FABEF2C261')